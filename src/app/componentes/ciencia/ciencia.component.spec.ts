import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CienciaComponent } from './ciencia.component';

describe('CienciaComponent', () => {
  let component: CienciaComponent;
  let fixture: ComponentFixture<CienciaComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CienciaComponent]
    });
    fixture = TestBed.createComponent(CienciaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
